(declare-fun a_ack!217 () (_ BitVec 64))
(declare-fun b_ack!216 () (_ BitVec 64))
(declare-fun FPCHECK_FINVALID_POW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_cos ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!217) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) a_ack!217))
               ((_ to_fp 11 53) a_ack!217))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) a_ack!217)))
       ((_ to_fp 11 53) a_ack!217)))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) #x400921fb54442d18)
                       ((_ to_fp 11 53) a_ack!217))
               ((_ to_fp 11 53) #x400921fb54442d18))
       ((_ to_fp 11 53) a_ack!217)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!217))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) #x400921fb54442d18)
                       ((_ to_fp 11 53) a_ack!217))
               ((_ to_fp 11 53) a_ack!217))
       ((_ to_fp 11 53) #x400921fb54442d18)))
(assert (fp.lt (fp.abs (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) #x400921fb54442d18)
                       ((_ to_fp 11 53) b_ack!216)))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (FPCHECK_FINVALID_POW
  (CF_cos (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) #x400921fb54442d18)
                  ((_ to_fp 11 53) a_ack!217)))
  (CF_cos (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) #x400921fb54442d18)
                  ((_ to_fp 11 53) a_ack!217)))))

(check-sat)
(exit)
