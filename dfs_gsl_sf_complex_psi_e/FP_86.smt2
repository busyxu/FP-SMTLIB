(declare-fun a_ack!1137 () (_ BitVec 64))
(declare-fun b_ack!1136 () (_ BitVec 64))
(declare-fun CF_sinh ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun CF_cos ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!1137) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) a_ack!1137))
               ((_ to_fp 11 53) a_ack!1137))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) a_ack!1137)))
       ((_ to_fp 11 53) a_ack!1137)))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) #x400921fb54442d18)
                       ((_ to_fp 11 53) a_ack!1137))
               ((_ to_fp 11 53) #x400921fb54442d18))
       ((_ to_fp 11 53) a_ack!1137)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!1137))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) #x400921fb54442d18)
                       ((_ to_fp 11 53) a_ack!1137))
               ((_ to_fp 11 53) a_ack!1137))
       ((_ to_fp 11 53) #x400921fb54442d18)))
(assert (let ((a!1 (fp.lt (fp.abs (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x400921fb54442d18)
                                  ((_ to_fp 11 53) b_ack!1136)))
                  ((_ to_fp 11 53) #x3ff0000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (CF_cos (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x400921fb54442d18)
                                   ((_ to_fp 11 53) a_ack!1137)))
                   (CF_sinh (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x400921fb54442d18)
                                    ((_ to_fp 11 53) b_ack!1136))))))
  (not (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000)))))

(check-sat)
(exit)
