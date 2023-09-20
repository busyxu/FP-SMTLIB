(declare-fun x1_ack!4052 () (_ BitVec 64))
(declare-fun x0_ack!4056 () (_ BitVec 64))
(declare-fun x2_ack!4053 () (_ BitVec 64))
(declare-fun b_ack!4055 () (_ BitVec 64))
(declare-fun a_ack!4054 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!4056) ((_ to_fp 11 53) x1_ack!4052)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!4052) ((_ to_fp 11 53) x2_ack!4053)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4052)
                       ((_ to_fp 11 53) x0_ack!4056))
               ((_ to_fp 11 53) x0_ack!4056))
       ((_ to_fp 11 53) x1_ack!4052)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!4052)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4052)
                       ((_ to_fp 11 53) x0_ack!4056)))
       ((_ to_fp 11 53) x0_ack!4056)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4053)
                       ((_ to_fp 11 53) x1_ack!4052))
               ((_ to_fp 11 53) x1_ack!4052))
       ((_ to_fp 11 53) x2_ack!4053)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!4053)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4053)
                       ((_ to_fp 11 53) x1_ack!4052)))
       ((_ to_fp 11 53) x1_ack!4052)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!4052)
                    ((_ to_fp 11 53) x0_ack!4056))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!4053)
                    ((_ to_fp 11 53) x1_ack!4052))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!4054) ((_ to_fp 11 53) b_ack!4055))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4054) ((_ to_fp 11 53) x0_ack!4056))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!4055) ((_ to_fp 11 53) x2_ack!4053))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!4054) ((_ to_fp 11 53) b_ack!4055))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4054) ((_ to_fp 11 53) x0_ack!4056))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!4054) ((_ to_fp 11 53) x1_ack!4052))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!4055) ((_ to_fp 11 53) x0_ack!4056))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!4055) ((_ to_fp 11 53) x1_ack!4052))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!4052)
                    ((_ to_fp 11 53) x0_ack!4056))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FADD_OVERFLOW
  (fp.mul roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!4054)
                  ((_ to_fp 11 53) x0_ack!4056))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!4054)
                  ((_ to_fp 11 53) x0_ack!4056)))
  (fp.mul roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) b_ack!4055)
                  ((_ to_fp 11 53) x0_ack!4056))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) b_ack!4055)
                  ((_ to_fp 11 53) x0_ack!4056)))))

(check-sat)
(exit)
