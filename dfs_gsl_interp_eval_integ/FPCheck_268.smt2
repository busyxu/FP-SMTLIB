(declare-fun x1_ack!3187 () (_ BitVec 64))
(declare-fun x0_ack!3194 () (_ BitVec 64))
(declare-fun x2_ack!3188 () (_ BitVec 64))
(declare-fun b_ack!3193 () (_ BitVec 64))
(declare-fun a_ack!3192 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun y0_ack!3189 () (_ BitVec 64))
(declare-fun y1_ack!3190 () (_ BitVec 64))
(declare-fun y2_ack!3191 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!3194) ((_ to_fp 11 53) x1_ack!3187)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!3187) ((_ to_fp 11 53) x2_ack!3188)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3187)
                       ((_ to_fp 11 53) x0_ack!3194))
               ((_ to_fp 11 53) x0_ack!3194))
       ((_ to_fp 11 53) x1_ack!3187)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3187)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3187)
                       ((_ to_fp 11 53) x0_ack!3194)))
       ((_ to_fp 11 53) x0_ack!3194)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3188)
                       ((_ to_fp 11 53) x1_ack!3187))
               ((_ to_fp 11 53) x1_ack!3187))
       ((_ to_fp 11 53) x2_ack!3188)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!3188)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3188)
                       ((_ to_fp 11 53) x1_ack!3187)))
       ((_ to_fp 11 53) x1_ack!3187)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3187)
                    ((_ to_fp 11 53) x0_ack!3194))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!3188)
                    ((_ to_fp 11 53) x1_ack!3187))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!3192) ((_ to_fp 11 53) b_ack!3193))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3192) ((_ to_fp 11 53) x0_ack!3194))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!3193) ((_ to_fp 11 53) x2_ack!3188))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!3192) ((_ to_fp 11 53) b_ack!3193))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3192) ((_ to_fp 11 53) x0_ack!3194))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!3192) ((_ to_fp 11 53) x1_ack!3187))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!3193) ((_ to_fp 11 53) x0_ack!3194))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!3193) ((_ to_fp 11 53) x1_ack!3187))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3187)
                    ((_ to_fp 11 53) x0_ack!3194))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!3191)
                           ((_ to_fp 11 53) y1_ack!3190))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!3188)
                                   ((_ to_fp 11 53) x1_ack!3187)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!3190)
                           ((_ to_fp 11 53) y0_ack!3189))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!3187)
                                   ((_ to_fp 11 53) x0_ack!3194)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!3188)
                                   ((_ to_fp 11 53) x1_ack!3187))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!3187)
                                   ((_ to_fp 11 53) x0_ack!3194))))))
  (FPCHECK_FADD_OVERFLOW
    (fp.div roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4008000000000000)
                    (fp.sub roundNearestTiesToEven a!1 a!2))
            a!3)
    #x0000000000000000)))

(check-sat)
(exit)
