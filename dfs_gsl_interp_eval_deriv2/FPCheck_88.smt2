(declare-fun xx_ack!596 () (_ BitVec 64))
(declare-fun x0_ack!597 () (_ BitVec 64))
(declare-fun x1_ack!593 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!594 () (_ BitVec 64))
(declare-fun y1_ack!595 () (_ BitVec 64))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!596) ((_ to_fp 11 53) #xabababababababab))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!596) ((_ to_fp 11 53) #xabababababababab))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!596) ((_ to_fp 11 53) x0_ack!597))))
(assert (not (fp.geq ((_ to_fp 11 53) xx_ack!596) ((_ to_fp 11 53) x1_ack!593))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!593)
               ((_ to_fp 11 53) x0_ack!597))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FDIV_UNDERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) y1_ack!595)
          ((_ to_fp 11 53) y0_ack!594))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!593)
          ((_ to_fp 11 53) x0_ack!597))))

(check-sat)
(exit)
