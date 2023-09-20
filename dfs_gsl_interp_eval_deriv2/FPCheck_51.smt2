(declare-fun xx_ack!372 () (_ BitVec 64))
(declare-fun x0_ack!373 () (_ BitVec 64))
(declare-fun x1_ack!369 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!370 () (_ BitVec 64))
(declare-fun y1_ack!371 () (_ BitVec 64))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!372) ((_ to_fp 11 53) #xabababababababab))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!372) ((_ to_fp 11 53) #xabababababababab))))
(assert (fp.lt ((_ to_fp 11 53) xx_ack!372) ((_ to_fp 11 53) x0_ack!373)))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!369)
               ((_ to_fp 11 53) x0_ack!373))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) xx_ack!372)
                       ((_ to_fp 11 53) x0_ack!373))
               ((_ to_fp 11 53) x0_ack!373))
       ((_ to_fp 11 53) xx_ack!372)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) xx_ack!372)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) xx_ack!372)
                       ((_ to_fp 11 53) x0_ack!373)))
       ((_ to_fp 11 53) x0_ack!373)))
(assert (FPCHECK_FDIV_OVERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) y1_ack!371)
          ((_ to_fp 11 53) y0_ack!370))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!369)
          ((_ to_fp 11 53) x0_ack!373))))

(check-sat)
(exit)
