(declare-fun limit_ack!5891 () (_ BitVec 64))
(declare-fun a_ack!5892 () (_ BitVec 64))
(declare-fun b_ack!5888 () (_ BitVec 64))
(declare-fun epsabs_ack!5890 () (_ BitVec 64))
(declare-fun c_ack!5889 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (bvult #x00000000000003e8 limit_ack!5891)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!5888) ((_ to_fp 11 53) a_ack!5892))))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!5890)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!5889) ((_ to_fp 11 53) a_ack!5892))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!5889) ((_ to_fp 11 53) b_ack!5888))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!5888)
                       ((_ to_fp 11 53) a_ack!5892))
               ((_ to_fp 11 53) a_ack!5892))
       ((_ to_fp 11 53) b_ack!5888)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) b_ack!5888)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!5888)
                       ((_ to_fp 11 53) a_ack!5892)))
       ((_ to_fp 11 53) a_ack!5892)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) c_ack!5889))
                           ((_ to_fp 11 53) b_ack!5888))
                   ((_ to_fp 11 53) a_ack!5892))))
(let ((a!2 (fp.abs (fp.div roundNearestTiesToEven
                           a!1
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5888)
                                   ((_ to_fp 11 53) a_ack!5892))))))
  (not (fp.gt a!2 ((_ to_fp 11 53) #x3ff199999999999a))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (CF_log (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!5888)))
                   ((_ to_fp 11 53) #x1ed51241356cf6e0))))
  (FPCHECK_FMUL_OVERFLOW #x3fe0000000000000 a!1)))

(check-sat)
(exit)
