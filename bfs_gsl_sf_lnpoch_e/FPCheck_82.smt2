(declare-fun a_ack!245 () (_ BitVec 64))
(declare-fun b_ack!244 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!245) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq (fp.add roundNearestTiesToEven
                     ((_ to_fp 11 53) a_ack!245)
                     ((_ to_fp 11 53) b_ack!244))
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!244) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!244))
       (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x3fb999999999999a)
               ((_ to_fp 11 53) a_ack!245))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!245) ((_ to_fp 11 53) #x4065600000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!245)
                       ((_ to_fp 11 53) b_ack!244))
               ((_ to_fp 11 53) a_ack!245))
       ((_ to_fp 11 53) b_ack!244)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!245)
                       ((_ to_fp 11 53) b_ack!244))
               ((_ to_fp 11 53) b_ack!244))
       ((_ to_fp 11 53) a_ack!245)))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!245)
                    ((_ to_fp 11 53) b_ack!244))
            ((_ to_fp 11 53) #x4065600000000000))))
(assert (FPCHECK_FSUB_OVERFLOW a_ack!245 #x3ff0000000000000))

(check-sat)
(exit)
