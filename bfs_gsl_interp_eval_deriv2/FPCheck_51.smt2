(declare-fun xx_ack!366 () (_ BitVec 64))
(declare-fun x0_ack!367 () (_ BitVec 64))
(declare-fun x1_ack!363 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!364 () (_ BitVec 64))
(declare-fun y1_ack!365 () (_ BitVec 64))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!366) ((_ to_fp 11 53) #xabababababababab))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!366) ((_ to_fp 11 53) #xabababababababab))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!366) ((_ to_fp 11 53) x0_ack!367))))
(assert (not (fp.geq ((_ to_fp 11 53) xx_ack!366) ((_ to_fp 11 53) x1_ack!363))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!363)
               ((_ to_fp 11 53) x0_ack!367))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FDIV_OVERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) y1_ack!365)
          ((_ to_fp 11 53) y0_ack!364))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!363)
          ((_ to_fp 11 53) x0_ack!367))))

(check-sat)
(exit)
