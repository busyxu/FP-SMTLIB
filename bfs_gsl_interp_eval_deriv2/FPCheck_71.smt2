(declare-fun xx_ack!504 () (_ BitVec 64))
(declare-fun x0_ack!505 () (_ BitVec 64))
(declare-fun x1_ack!503 () (_ BitVec 64))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!504) ((_ to_fp 11 53) #xabababababababab))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!504) ((_ to_fp 11 53) #xabababababababab))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!504) ((_ to_fp 11 53) x0_ack!505))))
(assert (not (fp.geq ((_ to_fp 11 53) xx_ack!504) ((_ to_fp 11 53) x1_ack!503))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!503)
               ((_ to_fp 11 53) x0_ack!505))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.eq (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x4008000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!503)
                       ((_ to_fp 11 53) x0_ack!505)))
       ((_ to_fp 11 53) #x0000000000000000)))

(check-sat)
(exit)
