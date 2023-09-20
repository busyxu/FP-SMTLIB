(declare-fun xx_ack!624 () (_ BitVec 64))
(declare-fun x0_ack!625 () (_ BitVec 64))
(declare-fun x1_ack!623 () (_ BitVec 64))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!624) ((_ to_fp 11 53) #xabababababababab))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!624) ((_ to_fp 11 53) #xabababababababab))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!624) ((_ to_fp 11 53) x0_ack!625))))
(assert (not (fp.geq ((_ to_fp 11 53) xx_ack!624) ((_ to_fp 11 53) x1_ack!623))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!623)
               ((_ to_fp 11 53) x0_ack!625))
       ((_ to_fp 11 53) #x0000000000000000)))

(check-sat)
(exit)
