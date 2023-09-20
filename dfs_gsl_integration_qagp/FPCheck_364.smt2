(declare-fun limit_ack!6242 () (_ BitVec 64))
(declare-fun epsabs_ack!6247 () (_ BitVec 64))
(declare-fun epsrel_ack!6241 () (_ BitVec 64))
(declare-fun a_ack!6248 () (_ BitVec 64))
(declare-fun x1_ack!6243 () (_ BitVec 64))
(declare-fun x2_ack!6244 () (_ BitVec 64))
(declare-fun x3_ack!6245 () (_ BitVec 64))
(declare-fun b_ack!6246 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (bvult #x00000000000003e8 limit_ack!6242)))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!6247) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!6241)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!6241)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!6243) ((_ to_fp 11 53) a_ack!6248))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!6244) ((_ to_fp 11 53) x1_ack!6243))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!6245) ((_ to_fp 11 53) x2_ack!6244))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!6246) ((_ to_fp 11 53) x3_ack!6245))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!6248)
                                   ((_ to_fp 11 53) x1_ack!6243))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!6243)
                                   ((_ to_fp 11 53) a_ack!6248)))
                   ((_ to_fp 11 53) #x3fe8fc7574fa6c62))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!6248)
                                   ((_ to_fp 11 53) x1_ack!6243)))
                   a!1)))
  (FPCHECK_FDIV_OVERFLOW
    (CF_log (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    a!2))
    #x7ff8000000000001))))

(check-sat)
(exit)
