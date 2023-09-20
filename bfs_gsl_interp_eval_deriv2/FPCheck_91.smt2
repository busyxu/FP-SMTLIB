(declare-fun xx_ack!629 () (_ BitVec 64))
(declare-fun x0_ack!630 () (_ BitVec 64))
(declare-fun x1_ack!626 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ZERO
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!627 () (_ BitVec 64))
(declare-fun y1_ack!628 () (_ BitVec 64))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!629) ((_ to_fp 11 53) #xabababababababab))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!629) ((_ to_fp 11 53) #xabababababababab))))
(assert (fp.lt ((_ to_fp 11 53) xx_ack!629) ((_ to_fp 11 53) x0_ack!630)))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!626)
               ((_ to_fp 11 53) x0_ack!630))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) xx_ack!629)
                       ((_ to_fp 11 53) x0_ack!630))
               ((_ to_fp 11 53) x0_ack!630))
       ((_ to_fp 11 53) xx_ack!629)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) xx_ack!629)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) xx_ack!629)
                       ((_ to_fp 11 53) x0_ack!630)))
       ((_ to_fp 11 53) x0_ack!630)))
(assert (FPCHECK_FDIV_ZERO
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) y1_ack!628)
          ((_ to_fp 11 53) y0_ack!627))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!626)
          ((_ to_fp 11 53) x0_ack!630))))

(check-sat)
(exit)
