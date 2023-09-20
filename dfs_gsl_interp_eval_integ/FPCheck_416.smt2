(declare-fun x1_ack!5138 () (_ BitVec 64))
(declare-fun x0_ack!5145 () (_ BitVec 64))
(declare-fun x2_ack!5139 () (_ BitVec 64))
(declare-fun b_ack!5144 () (_ BitVec 64))
(declare-fun a_ack!5143 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun y0_ack!5140 () (_ BitVec 64))
(declare-fun y1_ack!5141 () (_ BitVec 64))
(declare-fun y2_ack!5142 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!5145) ((_ to_fp 11 53) x1_ack!5138)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!5138) ((_ to_fp 11 53) x2_ack!5139)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5138)
                       ((_ to_fp 11 53) x0_ack!5145))
               ((_ to_fp 11 53) x0_ack!5145))
       ((_ to_fp 11 53) x1_ack!5138)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!5138)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5138)
                       ((_ to_fp 11 53) x0_ack!5145)))
       ((_ to_fp 11 53) x0_ack!5145)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5139)
                       ((_ to_fp 11 53) x1_ack!5138))
               ((_ to_fp 11 53) x1_ack!5138))
       ((_ to_fp 11 53) x2_ack!5139)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!5139)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5139)
                       ((_ to_fp 11 53) x1_ack!5138)))
       ((_ to_fp 11 53) x1_ack!5138)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!5138)
                    ((_ to_fp 11 53) x0_ack!5145))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5139)
                    ((_ to_fp 11 53) x1_ack!5138))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!5143) ((_ to_fp 11 53) b_ack!5144))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5143) ((_ to_fp 11 53) x0_ack!5145))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!5144) ((_ to_fp 11 53) x2_ack!5139))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!5143) ((_ to_fp 11 53) b_ack!5144))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5143) ((_ to_fp 11 53) x0_ack!5145))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!5143) ((_ to_fp 11 53) x1_ack!5138)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!5138) ((_ to_fp 11 53) a_ack!5143))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!5144) ((_ to_fp 11 53) x1_ack!5138))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!5144) ((_ to_fp 11 53) x2_ack!5139)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5139)
                    ((_ to_fp 11 53) x1_ack!5138))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!5143)
                       ((_ to_fp 11 53) x1_ack!5138))
               ((_ to_fp 11 53) x1_ack!5138))
       ((_ to_fp 11 53) a_ack!5143)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) a_ack!5143)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!5143)
                       ((_ to_fp 11 53) x1_ack!5138)))
       ((_ to_fp 11 53) x1_ack!5138)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!5142)
                           ((_ to_fp 11 53) y1_ack!5141))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!5139)
                                   ((_ to_fp 11 53) x1_ack!5138)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!5141)
                           ((_ to_fp 11 53) y0_ack!5140))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!5138)
                                   ((_ to_fp 11 53) x0_ack!5145)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!5139)
                                   ((_ to_fp 11 53) x1_ack!5138))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!5138)
                                   ((_ to_fp 11 53) x0_ack!5145))))))
  (FPCHECK_FMUL_ACCURACY
    #x3fd5555555555555
    (fp.div roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4008000000000000)
                    (fp.sub roundNearestTiesToEven a!1 a!2))
            a!3))))

(check-sat)
(exit)
