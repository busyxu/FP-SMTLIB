(declare-fun a_ack!28 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!28) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.leq ((_ to_fp 11 53) a_ack!28) ((_ to_fp 11 53) #x4010000000000000)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!28))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!28)
                       ((_ to_fp 11 53) a_ack!28))
               ((_ to_fp 11 53) a_ack!28))
       ((_ to_fp 11 53) a_ack!28)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!28))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!28)
                       ((_ to_fp 11 53) a_ack!28))
               ((_ to_fp 11 53) a_ack!28))
       ((_ to_fp 11 53) a_ack!28)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!28)
                                   ((_ to_fp 11 53) a_ack!28))
                           ((_ to_fp 11 53) #x4020000000000000))
                   ((_ to_fp 11 53) #x3fc0000000000000))))
  (FPCHECK_FSUB_ACCURACY
    (fp.mul roundNearestTiesToEven ((_ to_fp 11 53) #x4000000000000000) a!1)
    #xbff0000000000000)))

(check-sat)
(exit)
