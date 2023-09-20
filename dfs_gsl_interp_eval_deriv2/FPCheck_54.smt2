(declare-fun xx_ack!402 () (_ BitVec 64))
(declare-fun x0_ack!403 () (_ BitVec 64))
(declare-fun x1_ack!399 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_INVALID
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!400 () (_ BitVec 64))
(declare-fun y1_ack!401 () (_ BitVec 64))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!402) ((_ to_fp 11 53) #xabababababababab))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!402) ((_ to_fp 11 53) #xabababababababab))))
(assert (fp.lt ((_ to_fp 11 53) xx_ack!402) ((_ to_fp 11 53) x0_ack!403)))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!399)
               ((_ to_fp 11 53) x0_ack!403))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) xx_ack!402)
                       ((_ to_fp 11 53) x0_ack!403))
               ((_ to_fp 11 53) x0_ack!403))
       ((_ to_fp 11 53) xx_ack!402)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) xx_ack!402)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) xx_ack!402)
                       ((_ to_fp 11 53) x0_ack!403)))
       ((_ to_fp 11 53) x0_ack!403)))
(assert (FPCHECK_FDIV_INVALID
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) y1_ack!401)
          ((_ to_fp 11 53) y0_ack!400))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!399)
          ((_ to_fp 11 53) x0_ack!403))))

(check-sat)
(exit)
