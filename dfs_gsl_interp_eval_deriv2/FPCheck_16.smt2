(declare-fun xx_ack!137 () (_ BitVec 64))
(declare-fun x0_ack!138 () (_ BitVec 64))
(declare-fun x1_ack!133 () (_ BitVec 64))
(declare-fun x2_ack!134 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ZERO
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y1_ack!135 () (_ BitVec 64))
(declare-fun y2_ack!136 () (_ BitVec 64))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!137) ((_ to_fp 11 53) #xabababababababab))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!137) ((_ to_fp 11 53) #xabababababababab))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!137) ((_ to_fp 11 53) x0_ack!138))))
(assert (fp.geq ((_ to_fp 11 53) xx_ack!137) ((_ to_fp 11 53) x1_ack!133)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!133) ((_ to_fp 11 53) xx_ack!137))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!134)
               ((_ to_fp 11 53) x1_ack!133))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FDIV_ZERO
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) y2_ack!136)
          ((_ to_fp 11 53) y1_ack!135))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x2_ack!134)
          ((_ to_fp 11 53) x1_ack!133))))

(check-sat)
(exit)
