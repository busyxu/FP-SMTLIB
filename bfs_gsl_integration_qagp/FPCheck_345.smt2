(declare-fun limit_ack!5235 () (_ BitVec 64))
(declare-fun epsabs_ack!5240 () (_ BitVec 64))
(declare-fun a_ack!5241 () (_ BitVec 64))
(declare-fun x1_ack!5236 () (_ BitVec 64))
(declare-fun x2_ack!5237 () (_ BitVec 64))
(declare-fun x3_ack!5238 () (_ BitVec 64))
(declare-fun b_ack!5239 () (_ BitVec 64))
(declare-fun FPCHECK_FINVALID_LOG
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!5235)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!5240)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!5236) ((_ to_fp 11 53) a_ack!5241))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!5237) ((_ to_fp 11 53) x1_ack!5236))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!5238) ((_ to_fp 11 53) x2_ack!5237))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!5239) ((_ to_fp 11 53) x3_ack!5238))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5241)
                                   ((_ to_fp 11 53) x1_ack!5236))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!5236)
                                   ((_ to_fp 11 53) a_ack!5241)))
                   ((_ to_fp 11 53) #x3fedc3d9a4b011c6))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5241)
                                   ((_ to_fp 11 53) x1_ack!5236)))
                   a!1)))
  (FPCHECK_FINVALID_LOG
    (fp.mul roundNearestTiesToEven ((_ to_fp 11 53) #x3ff0000000000000) a!2)
    (fp.mul roundNearestTiesToEven ((_ to_fp 11 53) #x3ff0000000000000) a!2)))))

(check-sat)
(exit)
