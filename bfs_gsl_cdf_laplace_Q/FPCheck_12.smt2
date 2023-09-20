(declare-fun a_ack!56 () (_ BitVec 64))
(declare-fun x_ack!57 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (and (fp.eq ((_ to_fp 11 53) x_ack!57)
                 ((_ to_fp 11 53) #x0000000000000000))
          (fp.eq ((_ to_fp 11 53) a_ack!56)
                 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (fp.gt (fp.div roundNearestTiesToEven
               ((_ to_fp 11 53) x_ack!57)
               ((_ to_fp 11 53) a_ack!56))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FSUB_ACCURACY
  #x8000000000000000
  (fp.div roundNearestTiesToEven
          ((_ to_fp 11 53) x_ack!57)
          ((_ to_fp 11 53) a_ack!56))))

(check-sat)
(exit)
