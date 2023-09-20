(declare-fun b_ack!1122 () (_ BitVec 64))
(declare-fun a_ack!1123 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!1122) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!1123) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.leq ((_ to_fp 11 53) b_ack!1122) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.lt ((_ to_fp 11 53) a_ack!1123) ((_ to_fp 11 53) #x408f400000000000)))
(assert (let ((a!1 (fp.geq (fp.abs (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1122)
                                   ((_ to_fp 11 53) b_ack!1122)))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
  (not a!1)))
(assert (fp.lt (fp.abs (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!1122)
                       ((_ to_fp 11 53) b_ack!1122)))
       ((_ to_fp 11 53) #x3fd0000000000000)))
(assert (fp.lt (fp.abs (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3fe0000000000000)
                       ((_ to_fp 11 53) a_ack!1123)))
       ((_ to_fp 11 53) #x4034000000000000)))
(assert (FPCHECK_FADD_OVERFLOW
  #x3fb0000000000000
  (fp.mul roundNearestTiesToEven
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) #x3fe0000000000000)
                  ((_ to_fp 11 53) a_ack!1123))
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) #x3fe0000000000000)
                  ((_ to_fp 11 53) a_ack!1123)))))

(check-sat)
(exit)
