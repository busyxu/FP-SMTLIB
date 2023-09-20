(declare-fun c_ack!183 () (_ BitVec 64))
(declare-fun a_ack!184 () (_ BitVec 32))
(declare-fun b_ack!182 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_sin ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun CF_acos ((_ BitVec 64)) (_ FloatingPoint 11 53))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!183) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (bvslt a_ack!184 #xffffffff)))
(assert (= #xffffffff a_ack!184))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!183) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (fp.eq ((_ to_fp 11 53) b_ack!182) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!183) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.lt ((_ to_fp 11 53) c_ack!183) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    ((_ to_fp 11 53) c_ack!183))
            ((_ to_fp 11 53) #x3e50000000000000))))
(assert (FPCHECK_FDIV_UNDERFLOW
  #x4000000000000000
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x400921fb54442d18)
          (CF_sin (CF_acos c_ack!183)))))

(check-sat)
(exit)
