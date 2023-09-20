(declare-fun limit_ack!6314 () (_ BitVec 64))
(declare-fun epsabs_ack!6319 () (_ BitVec 64))
(declare-fun epsrel_ack!6313 () (_ BitVec 64))
(declare-fun a_ack!6320 () (_ BitVec 64))
(declare-fun x1_ack!6315 () (_ BitVec 64))
(declare-fun x2_ack!6316 () (_ BitVec 64))
(declare-fun x3_ack!6317 () (_ BitVec 64))
(declare-fun b_ack!6318 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!6314)))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!6319) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!6313)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!6313)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!6315) ((_ to_fp 11 53) a_ack!6320))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!6316) ((_ to_fp 11 53) x1_ack!6315))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!6317) ((_ to_fp 11 53) x2_ack!6316))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!6318) ((_ to_fp 11 53) x3_ack!6317))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!6320)
                                   ((_ to_fp 11 53) x1_ack!6315))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!6315)
                                   ((_ to_fp 11 53) a_ack!6320)))
                   ((_ to_fp 11 53) #x3fe8fc7574fa6c62))))
  (FPCHECK_FADD_ACCURACY
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x3fe0000000000000)
            (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!6320)
                    ((_ to_fp 11 53) x1_ack!6315)))
    a!1)))

(check-sat)
(exit)
