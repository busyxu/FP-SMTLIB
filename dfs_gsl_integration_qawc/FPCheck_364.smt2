(declare-fun limit_ack!5601 () (_ BitVec 64))
(declare-fun a_ack!5602 () (_ BitVec 64))
(declare-fun b_ack!5598 () (_ BitVec 64))
(declare-fun epsabs_ack!5600 () (_ BitVec 64))
(declare-fun c_ack!5599 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!5601)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!5598) ((_ to_fp 11 53) a_ack!5602))))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!5600)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!5599) ((_ to_fp 11 53) a_ack!5602))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!5599) ((_ to_fp 11 53) b_ack!5598))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!5598)
                       ((_ to_fp 11 53) a_ack!5602))
               ((_ to_fp 11 53) a_ack!5602))
       ((_ to_fp 11 53) b_ack!5598)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) b_ack!5598)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!5598)
                       ((_ to_fp 11 53) a_ack!5602)))
       ((_ to_fp 11 53) a_ack!5602)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) c_ack!5599))
                           ((_ to_fp 11 53) b_ack!5598))
                   ((_ to_fp 11 53) a_ack!5602))))
(let ((a!2 (fp.abs (fp.div roundNearestTiesToEven
                           a!1
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5598)
                                   ((_ to_fp 11 53) a_ack!5602))))))
  (fp.gt a!2 ((_ to_fp 11 53) #x3ff199999999999a)))))
(assert (FPCHECK_FADD_UNDERFLOW a_ack!5602 b_ack!5598))

(check-sat)
(exit)
