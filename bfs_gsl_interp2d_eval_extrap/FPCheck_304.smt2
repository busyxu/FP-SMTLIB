(declare-fun x1_ack!3215 () (_ BitVec 64))
(declare-fun x0_ack!3219 () (_ BitVec 64))
(declare-fun y0_ack!3216 () (_ BitVec 64))
(declare-fun x_ack!3217 () (_ BitVec 64))
(declare-fun y_ack!3218 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!3219) ((_ to_fp 11 53) x1_ack!3215))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!3216) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!3217) ((_ to_fp 11 53) x0_ack!3219))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!3217) ((_ to_fp 11 53) x1_ack!3215))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!3218) ((_ to_fp 11 53) y0_ack!3216))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!3218) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3215)
                       ((_ to_fp 11 53) x0_ack!3219))
               ((_ to_fp 11 53) x0_ack!3219))
       ((_ to_fp 11 53) x1_ack!3215)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3215)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3215)
                       ((_ to_fp 11 53) x0_ack!3219)))
       ((_ to_fp 11 53) x0_ack!3219)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!3216))
               ((_ to_fp 11 53) y0_ack!3216))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!3216)))
       ((_ to_fp 11 53) y0_ack!3216)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!3218)
                       ((_ to_fp 11 53) y0_ack!3216))
               ((_ to_fp 11 53) y0_ack!3216))
       ((_ to_fp 11 53) y_ack!3218)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) y_ack!3218)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!3218)
                       ((_ to_fp 11 53) y0_ack!3216)))
       ((_ to_fp 11 53) y0_ack!3216)))
(assert (FPCHECK_FDIV_UNDERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) y_ack!3218)
          ((_ to_fp 11 53) y0_ack!3216))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) #x3ff0000000000000)
          ((_ to_fp 11 53) y0_ack!3216))))

(check-sat)
(exit)
