(declare-fun limit_ack!4276 () (_ BitVec 64))
(declare-fun epsabs_ack!4281 () (_ BitVec 64))
(declare-fun a_ack!4282 () (_ BitVec 64))
(declare-fun x1_ack!4277 () (_ BitVec 64))
(declare-fun x2_ack!4278 () (_ BitVec 64))
(declare-fun x3_ack!4279 () (_ BitVec 64))
(declare-fun b_ack!4280 () (_ BitVec 64))
(assert (not (bvult #x00000000000003e8 limit_ack!4276)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!4281)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!4277) ((_ to_fp 11 53) a_ack!4282))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!4278) ((_ to_fp 11 53) x1_ack!4277))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!4279) ((_ to_fp 11 53) x2_ack!4278))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!4280) ((_ to_fp 11 53) x3_ack!4279))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!4282)
                                   ((_ to_fp 11 53) x1_ack!4277))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))

(check-sat)
(exit)
