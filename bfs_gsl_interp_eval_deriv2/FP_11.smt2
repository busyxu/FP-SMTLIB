(declare-fun xx_ack!492 () (_ BitVec 64))
(declare-fun x0_ack!493 () (_ BitVec 64))
(declare-fun x1_ack!491 () (_ BitVec 64))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!492) ((_ to_fp 11 53) #xabababababababab))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!492) ((_ to_fp 11 53) #xabababababababab))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!492) ((_ to_fp 11 53) x0_ack!493))))
(assert (not (fp.geq ((_ to_fp 11 53) xx_ack!492) ((_ to_fp 11 53) x1_ack!491))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!491)
               ((_ to_fp 11 53) x0_ack!493))
       ((_ to_fp 11 53) #x0000000000000000)))

(check-sat)
(exit)
