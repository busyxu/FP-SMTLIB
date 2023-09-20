(declare-fun limit_ack!5616 () (_ BitVec 64))
(declare-fun a_ack!5617 () (_ BitVec 64))
(declare-fun b_ack!5613 () (_ BitVec 64))
(declare-fun epsabs_ack!5615 () (_ BitVec 64))
(declare-fun c_ack!5614 () (_ BitVec 64))
(assert (not (bvult #x00000000000003e8 limit_ack!5616)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!5613) ((_ to_fp 11 53) a_ack!5617))))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!5615)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!5614) ((_ to_fp 11 53) a_ack!5617))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!5614) ((_ to_fp 11 53) b_ack!5613))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!5613)
                       ((_ to_fp 11 53) a_ack!5617))
               ((_ to_fp 11 53) a_ack!5617))
       ((_ to_fp 11 53) b_ack!5613)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) b_ack!5613)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!5613)
                       ((_ to_fp 11 53) a_ack!5617)))
       ((_ to_fp 11 53) a_ack!5617)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) c_ack!5614))
                           ((_ to_fp 11 53) b_ack!5613))
                   ((_ to_fp 11 53) a_ack!5617))))
(let ((a!2 (fp.abs (fp.div roundNearestTiesToEven
                           a!1
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5613)
                                   ((_ to_fp 11 53) a_ack!5617))))))
  (not (fp.gt a!2 ((_ to_fp 11 53) #x3ff199999999999a))))))

(check-sat)
(exit)
