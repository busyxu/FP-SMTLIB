(declare-fun a_ack!463 () (_ BitVec 32))
(declare-fun b_ack!461 () (_ BitVec 32))
(declare-fun c_ack!462 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (bvslt a_ack!463 #x00000000)))
(assert (not (bvslt b_ack!461 a_ack!463)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!462) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt (bvadd #x00000001 b_ack!461) #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!462) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #xffffffff b_ack!461)))
(assert (not (= #x00000000 b_ack!461)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!462) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4024000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvadd #x00000001 b_ack!461))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (not (fp.lt (fp.mul roundNearestTiesToEven
                      ((_ to_fp 11 53) c_ack!462)
                      ((_ to_fp 11 53) c_ack!462))
              (fp.mul roundNearestTiesToEven
                      a!1
                      ((_ to_fp 11 53) #x3f48406003b2ae5a))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvmul (bvadd #x00000001 b_ack!461)
                            (bvadd #x00000001 b_ack!461)))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
  (not (fp.gt (fp.mul roundNearestTiesToEven
                      ((_ to_fp 11 53) #x3f20000000000000)
                      ((_ to_fp 11 53) c_ack!462))
              a!1))))
(assert (not (bvslt #x00000032 (bvadd #x00000001 b_ack!461))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!462) ((_ to_fp 11 53) #x408f400000000000))))
(assert (FPCHECK_FMUL_OVERFLOW
  #x4000000000000000
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) roundNearestTiesToEven (bvadd #x00000001 b_ack!461))
          ((_ to_fp 11 53) #x3ff0000000000000))))

(check-sat)
(exit)
