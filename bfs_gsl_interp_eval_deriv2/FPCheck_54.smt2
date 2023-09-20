(declare-fun xx_ack!396 () (_ BitVec 64))
(declare-fun x0_ack!397 () (_ BitVec 64))
(declare-fun x1_ack!393 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_INVALID
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!394 () (_ BitVec 64))
(declare-fun y1_ack!395 () (_ BitVec 64))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!396) ((_ to_fp 11 53) #xabababababababab))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!396) ((_ to_fp 11 53) #xabababababababab))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!396) ((_ to_fp 11 53) x0_ack!397))))
(assert (not (fp.geq ((_ to_fp 11 53) xx_ack!396) ((_ to_fp 11 53) x1_ack!393))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!393)
               ((_ to_fp 11 53) x0_ack!397))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FDIV_INVALID
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) y1_ack!395)
          ((_ to_fp 11 53) y0_ack!394))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!393)
          ((_ to_fp 11 53) x0_ack!397))))

(check-sat)
(exit)
