(declare-fun a_ack!22 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!22) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!22) ((_ to_fp 11 53) #x0020000000000000))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!22) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!22))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!22)
                       ((_ to_fp 11 53) a_ack!22))
               ((_ to_fp 11 53) a_ack!22))
       ((_ to_fp 11 53) a_ack!22)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!22))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!22)
                       ((_ to_fp 11 53) a_ack!22))
               ((_ to_fp 11 53) a_ack!22))
       ((_ to_fp 11 53) a_ack!22)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fd0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!22)
                                   ((_ to_fp 11 53) a_ack!22)))
                   ((_ to_fp 11 53) #x3e355b410b3332c5))))
  (FPCHECK_FADD_OVERFLOW #x3e927e0ffaaee53d a!1)))

(check-sat)
(exit)
