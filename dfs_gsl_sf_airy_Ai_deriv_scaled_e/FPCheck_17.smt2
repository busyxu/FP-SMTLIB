(declare-fun a_ack!28 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!28) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!28) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!28) ((_ to_fp 11 53) #x4010000000000000))))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!28))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!28)
                       ((_ to_fp 11 53) #x5fb6a09e667f3bcd))
               ((_ to_fp 11 53) a_ack!28))
       ((_ to_fp 11 53) #x5fb6a09e667f3bcd)))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!28)
                       ((_ to_fp 11 53) #x5fb6a09e667f3bcd))
               ((_ to_fp 11 53) #x5fb6a09e667f3bcd))
       ((_ to_fp 11 53) a_ack!28)))
(assert (FPCHECK_FSUB_ACCURACY
  (fp.div roundNearestTiesToEven
          ((_ to_fp 11 53) #x4030000000000000)
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!28)
                  ((_ to_fp 11 53) #x5fb6a09e667f3bcd)))
  #x3ff0000000000000))

(check-sat)
(exit)
