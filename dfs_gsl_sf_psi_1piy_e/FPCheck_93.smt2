(declare-fun a_ack!128 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!128))
            ((_ to_fp 11 53) #x408f400000000000))))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!128))
       ((_ to_fp 11 53) #x4024000000000000)))
(assert (let ((a!1 (fp.eq (fp.abs (fp.abs ((_ to_fp 11 53) a_ack!128)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!128))
                           (fp.abs ((_ to_fp 11 53) a_ack!128)))
                   (fp.abs ((_ to_fp 11 53) a_ack!128)))))
  (fp.eq a!1 (fp.abs ((_ to_fp 11 53) a_ack!128)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.abs ((_ to_fp 11 53) a_ack!128)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!128))
                           (fp.abs ((_ to_fp 11 53) a_ack!128)))
                   (fp.abs ((_ to_fp 11 53) a_ack!128)))))
  (fp.eq a!1 (fp.abs ((_ to_fp 11 53) a_ack!128)))))
(assert (FPCHECK_FDIV_OVERFLOW
  #x3ff0000000000000
  (fp.mul roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) a_ack!128))
          (fp.abs ((_ to_fp 11 53) a_ack!128)))))

(check-sat)
(exit)
