(declare-fun xx_ack!158 () (_ BitVec 64))
(declare-fun x0_ack!159 () (_ BitVec 64))
(declare-fun x1_ack!154 () (_ BitVec 64))
(declare-fun x2_ack!155 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ZERO
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y1_ack!156 () (_ BitVec 64))
(declare-fun y2_ack!157 () (_ BitVec 64))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!158) ((_ to_fp 11 53) #xabababababababab))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!158) ((_ to_fp 11 53) #xabababababababab))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!158) ((_ to_fp 11 53) x0_ack!159))))
(assert (fp.geq ((_ to_fp 11 53) xx_ack!158) ((_ to_fp 11 53) x1_ack!154)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!154) ((_ to_fp 11 53) xx_ack!158))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!155)
               ((_ to_fp 11 53) x1_ack!154))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FDIV_ZERO
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) y2_ack!157)
          ((_ to_fp 11 53) y1_ack!156))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x2_ack!155)
          ((_ to_fp 11 53) x1_ack!154))))

(check-sat)
(exit)
