(declare-fun limit_ack!5158 () (_ BitVec 64))
(declare-fun epsabs_ack!5163 () (_ BitVec 64))
(declare-fun a_ack!5164 () (_ BitVec 64))
(declare-fun x1_ack!5159 () (_ BitVec 64))
(declare-fun x2_ack!5160 () (_ BitVec 64))
(declare-fun x3_ack!5161 () (_ BitVec 64))
(declare-fun b_ack!5162 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!5158)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!5163)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!5159) ((_ to_fp 11 53) a_ack!5164))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!5160) ((_ to_fp 11 53) x1_ack!5159))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!5161) ((_ to_fp 11 53) x2_ack!5160))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!5162) ((_ to_fp 11 53) x3_ack!5161))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5164)
                                   ((_ to_fp 11 53) x1_ack!5159))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!5159)
                                   ((_ to_fp 11 53) a_ack!5164)))
                   ((_ to_fp 11 53) #x3fedc3d9a4b011c6))))
  (FPCHECK_FADD_ACCURACY
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x3fe0000000000000)
            (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!5164)
                    ((_ to_fp 11 53) x1_ack!5159)))
    a!1)))

(check-sat)
(exit)
