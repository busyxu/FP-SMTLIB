(declare-fun limit_ack!5646 () (_ BitVec 64))
(declare-fun a_ack!5647 () (_ BitVec 64))
(declare-fun b_ack!5643 () (_ BitVec 64))
(declare-fun epsabs_ack!5645 () (_ BitVec 64))
(declare-fun c_ack!5644 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!5646)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!5643) ((_ to_fp 11 53) a_ack!5647))))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!5645)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!5644) ((_ to_fp 11 53) a_ack!5647))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!5644) ((_ to_fp 11 53) b_ack!5643))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!5643)
                       ((_ to_fp 11 53) a_ack!5647))
               ((_ to_fp 11 53) a_ack!5647))
       ((_ to_fp 11 53) b_ack!5643)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) b_ack!5643)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!5643)
                       ((_ to_fp 11 53) a_ack!5647)))
       ((_ to_fp 11 53) a_ack!5647)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) c_ack!5644))
                           ((_ to_fp 11 53) b_ack!5643))
                   ((_ to_fp 11 53) a_ack!5647))))
(let ((a!2 (fp.abs (fp.div roundNearestTiesToEven
                           a!1
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5643)
                                   ((_ to_fp 11 53) a_ack!5647))))))
  (not (fp.gt a!2 ((_ to_fp 11 53) #x3ff199999999999a))))))
(assert (FPCHECK_FADD_ACCURACY b_ack!5643 a_ack!5647))

(check-sat)
(exit)
