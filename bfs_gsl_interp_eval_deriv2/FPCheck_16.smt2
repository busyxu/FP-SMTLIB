(declare-fun xx_ack!122 () (_ BitVec 64))
(declare-fun x0_ack!123 () (_ BitVec 64))
(declare-fun x1_ack!118 () (_ BitVec 64))
(declare-fun x2_ack!119 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y1_ack!120 () (_ BitVec 64))
(declare-fun y2_ack!121 () (_ BitVec 64))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!122) ((_ to_fp 11 53) #xabababababababab))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!122) ((_ to_fp 11 53) #xabababababababab))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!122) ((_ to_fp 11 53) x0_ack!123))))
(assert (fp.geq ((_ to_fp 11 53) xx_ack!122) ((_ to_fp 11 53) x1_ack!118)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!118) ((_ to_fp 11 53) xx_ack!122))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!119)
               ((_ to_fp 11 53) x1_ack!118))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FDIV_UNDERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) y2_ack!121)
          ((_ to_fp 11 53) y1_ack!120))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x2_ack!119)
          ((_ to_fp 11 53) x1_ack!118))))

(check-sat)
(exit)
