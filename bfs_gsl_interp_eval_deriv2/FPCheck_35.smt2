(declare-fun xx_ack!278 () (_ BitVec 64))
(declare-fun x0_ack!279 () (_ BitVec 64))
(declare-fun x1_ack!276 () (_ BitVec 64))
(declare-fun x2_ack!277 () (_ BitVec 64))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!278) ((_ to_fp 11 53) #xabababababababab))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!278) ((_ to_fp 11 53) #xabababababababab))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!278) ((_ to_fp 11 53) x0_ack!279))))
(assert (fp.geq ((_ to_fp 11 53) xx_ack!278) ((_ to_fp 11 53) x1_ack!276)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!276) ((_ to_fp 11 53) xx_ack!278))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!277)
               ((_ to_fp 11 53) x1_ack!276))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.eq (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x4008000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!277)
                       ((_ to_fp 11 53) x1_ack!276)))
       ((_ to_fp 11 53) #x0000000000000000)))

(check-sat)
(exit)
