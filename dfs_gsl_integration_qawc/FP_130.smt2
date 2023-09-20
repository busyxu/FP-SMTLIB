(declare-fun limit_ack!6066 () (_ BitVec 64))
(declare-fun a_ack!6067 () (_ BitVec 64))
(declare-fun b_ack!6063 () (_ BitVec 64))
(declare-fun epsabs_ack!6065 () (_ BitVec 64))
(declare-fun c_ack!6064 () (_ BitVec 64))
(assert (not (bvult #x00000000000003e8 limit_ack!6066)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!6063) ((_ to_fp 11 53) a_ack!6067))))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!6065)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!6064) ((_ to_fp 11 53) a_ack!6067))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!6064) ((_ to_fp 11 53) b_ack!6063))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!6063)
                       ((_ to_fp 11 53) a_ack!6067))
               ((_ to_fp 11 53) a_ack!6067))
       ((_ to_fp 11 53) b_ack!6063)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) b_ack!6063)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!6063)
                       ((_ to_fp 11 53) a_ack!6067)))
       ((_ to_fp 11 53) a_ack!6067)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) c_ack!6064))
                           ((_ to_fp 11 53) b_ack!6063))
                   ((_ to_fp 11 53) a_ack!6067))))
(let ((a!2 (fp.abs (fp.div roundNearestTiesToEven
                           a!1
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6063)
                                   ((_ to_fp 11 53) a_ack!6067))))))
  (not (fp.gt a!2 ((_ to_fp 11 53) #x3ff199999999999a))))))

(check-sat)
(exit)
