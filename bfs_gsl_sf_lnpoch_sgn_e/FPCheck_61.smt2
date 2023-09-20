(declare-fun b_ack!231 () (_ BitVec 64))
(declare-fun a_ack!232 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!231) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt ((_ to_fp 11 53) a_ack!232) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.gt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!232)
                    ((_ to_fp 11 53) b_ack!231))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!232) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!232) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!232)
                       ((_ to_fp 11 53) b_ack!231))
               ((_ to_fp 11 53) a_ack!232))
       ((_ to_fp 11 53) b_ack!231)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!232)
                       ((_ to_fp 11 53) b_ack!231))
               ((_ to_fp 11 53) b_ack!231))
       ((_ to_fp 11 53) a_ack!232)))
(assert (FPCHECK_FSUB_OVERFLOW
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!232)
          ((_ to_fp 11 53) b_ack!231))
  #x3ff0000000000000))

(check-sat)
(exit)
