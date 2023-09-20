(declare-fun xx_ack!724 () (_ BitVec 64))
(declare-fun x0_ack!725 () (_ BitVec 64))
(declare-fun x1_ack!723 () (_ BitVec 64))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!724) ((_ to_fp 11 53) #xabababababababab))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!724) ((_ to_fp 11 53) #xabababababababab))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!724) ((_ to_fp 11 53) x0_ack!725))))
(assert (not (fp.geq ((_ to_fp 11 53) xx_ack!724) ((_ to_fp 11 53) x1_ack!723))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!723)
               ((_ to_fp 11 53) x0_ack!725))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.eq (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x4008000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!723)
                       ((_ to_fp 11 53) x0_ack!725)))
       ((_ to_fp 11 53) #x0000000000000000)))

(check-sat)
(exit)
