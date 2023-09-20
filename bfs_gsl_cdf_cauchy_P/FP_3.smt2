(declare-fun a_ack!50 () (_ BitVec 64))
(declare-fun x_ack!51 () (_ BitVec 64))
(assert (not (and (fp.eq ((_ to_fp 11 53) x_ack!51)
                 ((_ to_fp 11 53) #x0000000000000000))
          (fp.eq ((_ to_fp 11 53) a_ack!50)
                 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (fp.gt (fp.div roundNearestTiesToEven
               ((_ to_fp 11 53) x_ack!51)
               ((_ to_fp 11 53) a_ack!50))
       ((_ to_fp 11 53) #xbff0000000000000)))

(check-sat)
(exit)
