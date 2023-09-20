(declare-fun x1_ack!963 () (_ BitVec 64))
(declare-fun x0_ack!971 () (_ BitVec 64))
(declare-fun y0_ack!964 () (_ BitVec 64))
(declare-fun x_ack!969 () (_ BitVec 64))
(declare-fun y_ack!970 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(declare-fun z2_ack!967 () (_ BitVec 64))
(declare-fun z1_ack!966 () (_ BitVec 64))
(declare-fun z3_ack!968 () (_ BitVec 64))
(declare-fun z0_ack!965 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!971) ((_ to_fp 11 53) x1_ack!963))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!964) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!969) ((_ to_fp 11 53) x0_ack!971))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!969) ((_ to_fp 11 53) x1_ack!963))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!970) ((_ to_fp 11 53) y0_ack!964))))
(assert (not (fp.gt ((_ to_fp 11 53) y_ack!970) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!969) ((_ to_fp 11 53) x0_ack!971))))
(assert (fp.geq ((_ to_fp 11 53) x_ack!969) ((_ to_fp 11 53) x1_ack!963)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!970) ((_ to_fp 11 53) y0_ack!964))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!970) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!963)
                       ((_ to_fp 11 53) x0_ack!971))
               ((_ to_fp 11 53) x0_ack!971))
       ((_ to_fp 11 53) x1_ack!963)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!963)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!963)
                       ((_ to_fp 11 53) x0_ack!971)))
       ((_ to_fp 11 53) x0_ack!971)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!964))
               ((_ to_fp 11 53) y0_ack!964))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!964)))
       ((_ to_fp 11 53) y0_ack!964)))
(assert (FPCHECK_FADD_UNDERFLOW
  (fp.sub roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) z0_ack!965)
                  ((_ to_fp 11 53) z3_ack!968))
          ((_ to_fp 11 53) z1_ack!966))
  z2_ack!967))

(check-sat)
(exit)
