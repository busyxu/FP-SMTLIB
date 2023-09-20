(declare-fun x1_ack!956 () (_ BitVec 64))
(declare-fun x0_ack!960 () (_ BitVec 64))
(declare-fun y0_ack!957 () (_ BitVec 64))
(declare-fun x_ack!958 () (_ BitVec 64))
(declare-fun y_ack!959 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!960) ((_ to_fp 11 53) x1_ack!956))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!957) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!958) ((_ to_fp 11 53) x0_ack!960))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!958) ((_ to_fp 11 53) x1_ack!956))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!959) ((_ to_fp 11 53) y0_ack!957))))
(assert (not (fp.gt ((_ to_fp 11 53) y_ack!959) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!958) ((_ to_fp 11 53) x0_ack!960))))
(assert (fp.geq ((_ to_fp 11 53) x_ack!958) ((_ to_fp 11 53) x1_ack!956)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!959) ((_ to_fp 11 53) y0_ack!957))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!959) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!956)
                       ((_ to_fp 11 53) x0_ack!960))
               ((_ to_fp 11 53) x0_ack!960))
       ((_ to_fp 11 53) x1_ack!956)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!956)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!956)
                       ((_ to_fp 11 53) x0_ack!960)))
       ((_ to_fp 11 53) x0_ack!960)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!957))
               ((_ to_fp 11 53) y0_ack!957))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!957)))
       ((_ to_fp 11 53) y0_ack!957)))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.div roundNearestTiesToEven
          ((_ to_fp 11 53) #x3ff0000000000000)
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x1_ack!956)
                  ((_ to_fp 11 53) x0_ack!960)))
  (fp.div roundNearestTiesToEven
          ((_ to_fp 11 53) #x3ff0000000000000)
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) #x3ff0000000000000)
                  ((_ to_fp 11 53) y0_ack!957)))))

(check-sat)
(exit)
