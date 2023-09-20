(declare-fun xx_ack!382 () (_ BitVec 64))
(declare-fun x0_ack!383 () (_ BitVec 64))
(declare-fun x1_ack!379 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!380 () (_ BitVec 64))
(declare-fun y1_ack!381 () (_ BitVec 64))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!382) ((_ to_fp 11 53) #xabababababababab))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!382) ((_ to_fp 11 53) #xabababababababab))))
(assert (fp.lt ((_ to_fp 11 53) xx_ack!382) ((_ to_fp 11 53) x0_ack!383)))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!379)
               ((_ to_fp 11 53) x0_ack!383))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) xx_ack!382)
                       ((_ to_fp 11 53) x0_ack!383))
               ((_ to_fp 11 53) x0_ack!383))
       ((_ to_fp 11 53) xx_ack!382)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) xx_ack!382)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) xx_ack!382)
                       ((_ to_fp 11 53) x0_ack!383)))
       ((_ to_fp 11 53) x0_ack!383)))
(assert (FPCHECK_FDIV_UNDERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) y1_ack!381)
          ((_ to_fp 11 53) y0_ack!380))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!379)
          ((_ to_fp 11 53) x0_ack!383))))

(check-sat)
(exit)
