(declare-fun limit_ack!3856 () (_ BitVec 64))
(declare-fun epsabs_ack!3861 () (_ BitVec 64))
(declare-fun a_ack!3862 () (_ BitVec 64))
(declare-fun x1_ack!3857 () (_ BitVec 64))
(declare-fun x2_ack!3858 () (_ BitVec 64))
(declare-fun x3_ack!3859 () (_ BitVec 64))
(declare-fun b_ack!3860 () (_ BitVec 64))
(assert (not (bvult #x00000000000003e8 limit_ack!3856)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!3861)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!3857) ((_ to_fp 11 53) a_ack!3862))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!3858) ((_ to_fp 11 53) x1_ack!3857))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!3859) ((_ to_fp 11 53) x2_ack!3858))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!3860) ((_ to_fp 11 53) x3_ack!3859))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!3862)
                                   ((_ to_fp 11 53) x1_ack!3857))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))

(check-sat)
(exit)
