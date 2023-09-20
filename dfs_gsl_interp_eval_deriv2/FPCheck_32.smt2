(declare-fun xx_ack!257 () (_ BitVec 64))
(declare-fun x0_ack!258 () (_ BitVec 64))
(declare-fun x1_ack!255 () (_ BitVec 64))
(declare-fun x2_ack!256 () (_ BitVec 64))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!257) ((_ to_fp 11 53) #xabababababababab))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!257) ((_ to_fp 11 53) #xabababababababab))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!257) ((_ to_fp 11 53) x0_ack!258))))
(assert (fp.geq ((_ to_fp 11 53) xx_ack!257) ((_ to_fp 11 53) x1_ack!255)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!255) ((_ to_fp 11 53) xx_ack!257))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!256)
               ((_ to_fp 11 53) x1_ack!255))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.eq (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x4008000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!256)
                       ((_ to_fp 11 53) x1_ack!255)))
       ((_ to_fp 11 53) #x0000000000000000)))

(check-sat)
(exit)
