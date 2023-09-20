(declare-fun b_ack!429 () (_ BitVec 32))
(declare-fun a_ack!431 () (_ BitVec 32))
(declare-fun c_ack!430 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt b_ack!429 #x00000000)))
(assert (not (bvslt a_ack!431 b_ack!429)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!430) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!430) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (bvslt #x00000000 b_ack!429))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!430) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!430) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (= #x00000000 b_ack!429)))
(assert (let ((a!1 (fp.leq (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) c_ack!430))
                           ((_ to_fp 11 53) c_ack!430))
                   ((_ to_fp 11 53) #xbff0000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) c_ack!430))
                           ((_ to_fp 11 53) c_ack!430)))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #x3f6428a2f98d728d)))))
(assert (let ((a!1 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) c_ack!430))
                           ((_ to_fp 11 53) c_ack!430)))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #x3fe0000000000000)))))
(assert (not (fp.leq ((_ to_fp 11 53) roundNearestTiesToEven b_ack!429)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq (fp.add roundNearestTiesToEven
                     ((_ to_fp 11 53) roundNearestTiesToEven b_ack!429)
                     ((_ to_fp 11 53) #x3fe0000000000000))
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_UNDERFLOW
  #x3fb999999999999a
  ((_ to_fp 11 53) roundNearestTiesToEven b_ack!429)))

(check-sat)
(exit)
