(declare-fun a_ack!481 () (_ BitVec 32))
(declare-fun b_ack!479 () (_ BitVec 32))
(declare-fun c_ack!480 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (bvslt a_ack!481 #x00000000)))
(assert (not (bvslt b_ack!479 a_ack!481)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!480) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt (bvadd #x00000001 b_ack!479) #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!480) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #xffffffff b_ack!479)))
(assert (not (= #x00000000 b_ack!479)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!480) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4024000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvadd #x00000001 b_ack!479))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (not (fp.lt (fp.mul roundNearestTiesToEven
                      ((_ to_fp 11 53) c_ack!480)
                      ((_ to_fp 11 53) c_ack!480))
              (fp.mul roundNearestTiesToEven
                      a!1
                      ((_ to_fp 11 53) #x3f48406003b2ae5a))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvmul (bvadd #x00000001 b_ack!479)
                            (bvadd #x00000001 b_ack!479)))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
  (not (fp.gt (fp.mul roundNearestTiesToEven
                      ((_ to_fp 11 53) #x3f20000000000000)
                      ((_ to_fp 11 53) c_ack!480))
              a!1))))
(assert (not (bvslt #x00000032 (bvadd #x00000001 b_ack!479))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!480) ((_ to_fp 11 53) #x408f400000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvadd #x00000001 b_ack!479))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (FPCHECK_FDIV_ACCURACY c_ack!480 a!1)))

(check-sat)
(exit)
