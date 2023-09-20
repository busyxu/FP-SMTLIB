(declare-fun xx_ack!392 () (_ BitVec 64))
(declare-fun x0_ack!393 () (_ BitVec 64))
(declare-fun x1_ack!389 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!390 () (_ BitVec 64))
(declare-fun y1_ack!391 () (_ BitVec 64))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!392) ((_ to_fp 11 53) #xabababababababab))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!392) ((_ to_fp 11 53) #xabababababababab))))
(assert (fp.lt ((_ to_fp 11 53) xx_ack!392) ((_ to_fp 11 53) x0_ack!393)))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!389)
               ((_ to_fp 11 53) x0_ack!393))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) xx_ack!392)
                       ((_ to_fp 11 53) x0_ack!393))
               ((_ to_fp 11 53) x0_ack!393))
       ((_ to_fp 11 53) xx_ack!392)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) xx_ack!392)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) xx_ack!392)
                       ((_ to_fp 11 53) x0_ack!393)))
       ((_ to_fp 11 53) x0_ack!393)))
(assert (FPCHECK_FDIV_ACCURACY
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) y1_ack!391)
          ((_ to_fp 11 53) y0_ack!390))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!389)
          ((_ to_fp 11 53) x0_ack!393))))

(check-sat)
(exit)
