(declare-fun x1_ack!5141 () (_ BitVec 64))
(declare-fun x0_ack!5145 () (_ BitVec 64))
(declare-fun x2_ack!5142 () (_ BitVec 64))
(declare-fun b_ack!5144 () (_ BitVec 64))
(declare-fun a_ack!5143 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!5145) ((_ to_fp 11 53) x1_ack!5141)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!5141) ((_ to_fp 11 53) x2_ack!5142)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5141)
                       ((_ to_fp 11 53) x0_ack!5145))
               ((_ to_fp 11 53) x0_ack!5145))
       ((_ to_fp 11 53) x1_ack!5141)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!5141)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5141)
                       ((_ to_fp 11 53) x0_ack!5145)))
       ((_ to_fp 11 53) x0_ack!5145)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5142)
                       ((_ to_fp 11 53) x1_ack!5141))
               ((_ to_fp 11 53) x1_ack!5141))
       ((_ to_fp 11 53) x2_ack!5142)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!5142)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5142)
                       ((_ to_fp 11 53) x1_ack!5141)))
       ((_ to_fp 11 53) x1_ack!5141)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!5141)
                    ((_ to_fp 11 53) x0_ack!5145))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5142)
                    ((_ to_fp 11 53) x1_ack!5141))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!5143) ((_ to_fp 11 53) b_ack!5144))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5143) ((_ to_fp 11 53) x0_ack!5145))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!5144) ((_ to_fp 11 53) x2_ack!5142))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!5143) ((_ to_fp 11 53) b_ack!5144))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5143) ((_ to_fp 11 53) x0_ack!5145))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!5143) ((_ to_fp 11 53) x1_ack!5141)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!5141) ((_ to_fp 11 53) a_ack!5143))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!5144) ((_ to_fp 11 53) x1_ack!5141))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!5144) ((_ to_fp 11 53) x2_ack!5142)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5142)
                    ((_ to_fp 11 53) x1_ack!5141))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!5143)
                       ((_ to_fp 11 53) x1_ack!5141))
               ((_ to_fp 11 53) x1_ack!5141))
       ((_ to_fp 11 53) a_ack!5143)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) a_ack!5143)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!5143)
                       ((_ to_fp 11 53) x1_ack!5141)))
       ((_ to_fp 11 53) x1_ack!5141)))
(assert (FPCHECK_FADD_OVERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!5143)
          ((_ to_fp 11 53) x1_ack!5141))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!5144)
          ((_ to_fp 11 53) x1_ack!5141))))

(check-sat)
(exit)
