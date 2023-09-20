(declare-fun xx_ack!616 () (_ BitVec 64))
(declare-fun x0_ack!617 () (_ BitVec 64))
(declare-fun x1_ack!613 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_INVALID
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!614 () (_ BitVec 64))
(declare-fun y1_ack!615 () (_ BitVec 64))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!616) ((_ to_fp 11 53) #xabababababababab))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!616) ((_ to_fp 11 53) #xabababababababab))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!616) ((_ to_fp 11 53) x0_ack!617))))
(assert (not (fp.geq ((_ to_fp 11 53) xx_ack!616) ((_ to_fp 11 53) x1_ack!613))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!613)
               ((_ to_fp 11 53) x0_ack!617))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FDIV_INVALID
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) y1_ack!615)
          ((_ to_fp 11 53) y0_ack!614))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!613)
          ((_ to_fp 11 53) x0_ack!617))))

(check-sat)
(exit)
