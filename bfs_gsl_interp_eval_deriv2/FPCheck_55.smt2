(declare-fun xx_ack!401 () (_ BitVec 64))
(declare-fun x0_ack!402 () (_ BitVec 64))
(declare-fun x1_ack!398 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ZERO
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!399 () (_ BitVec 64))
(declare-fun y1_ack!400 () (_ BitVec 64))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!401) ((_ to_fp 11 53) #xabababababababab))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!401) ((_ to_fp 11 53) #xabababababababab))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!401) ((_ to_fp 11 53) x0_ack!402))))
(assert (not (fp.geq ((_ to_fp 11 53) xx_ack!401) ((_ to_fp 11 53) x1_ack!398))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!398)
               ((_ to_fp 11 53) x0_ack!402))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FDIV_ZERO
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) y1_ack!400)
          ((_ to_fp 11 53) y0_ack!399))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!398)
          ((_ to_fp 11 53) x0_ack!402))))

(check-sat)
(exit)
