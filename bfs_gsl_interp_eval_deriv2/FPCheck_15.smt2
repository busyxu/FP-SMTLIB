(declare-fun xx_ack!110 () (_ BitVec 64))
(declare-fun x0_ack!111 () (_ BitVec 64))
(declare-fun x1_ack!106 () (_ BitVec 64))
(declare-fun x2_ack!107 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y1_ack!108 () (_ BitVec 64))
(declare-fun y2_ack!109 () (_ BitVec 64))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!110) ((_ to_fp 11 53) #xabababababababab))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!110) ((_ to_fp 11 53) #xabababababababab))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!110) ((_ to_fp 11 53) x0_ack!111))))
(assert (fp.geq ((_ to_fp 11 53) xx_ack!110) ((_ to_fp 11 53) x1_ack!106)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!106) ((_ to_fp 11 53) xx_ack!110))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!107)
               ((_ to_fp 11 53) x1_ack!106))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FDIV_OVERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) y2_ack!109)
          ((_ to_fp 11 53) y1_ack!108))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x2_ack!107)
          ((_ to_fp 11 53) x1_ack!106))))

(check-sat)
(exit)
