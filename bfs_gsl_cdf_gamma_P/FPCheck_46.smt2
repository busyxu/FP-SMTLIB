(declare-fun b_ack!345 () (_ BitVec 64))
(declare-fun x_ack!346 () (_ BitVec 64))
(declare-fun a_ack!344 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (and (fp.eq ((_ to_fp 11 53) x_ack!346)
                 ((_ to_fp 11 53) #x0000000000000000))
          (fp.eq ((_ to_fp 11 53) b_ack!345)
                 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (not (fp.leq ((_ to_fp 11 53) x_ack!346) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt (fp.div roundNearestTiesToEven
               ((_ to_fp 11 53) x_ack!346)
               ((_ to_fp 11 53) b_ack!345))
       ((_ to_fp 11 53) a_ack!344)))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!344) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!346)
                    ((_ to_fp 11 53) b_ack!345))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!346)
                    ((_ to_fp 11 53) b_ack!345))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!344) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq (fp.div roundNearestTiesToEven
                     ((_ to_fp 11 53) x_ack!346)
                     ((_ to_fp 11 53) b_ack!345))
             (fp.mul roundNearestTiesToEven
                     ((_ to_fp 11 53) #x3fe0000000000000)
                     ((_ to_fp 11 53) a_ack!344)))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!344) ((_ to_fp 11 53) #x412e848000000000)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!346)
                           ((_ to_fp 11 53) b_ack!345))
                   ((_ to_fp 11 53) a_ack!344))))
  (not (fp.lt (fp.mul roundNearestTiesToEven a!1 a!1)
              ((_ to_fp 11 53) a_ack!344)))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!344) ((_ to_fp 11 53) #x3fc999999999999a))))
(assert (fp.leq ((_ to_fp 11 53) a_ack!344)
        (fp.div roundNearestTiesToEven
                ((_ to_fp 11 53) x_ack!346)
                ((_ to_fp 11 53) b_ack!345))))
(assert (not (fp.leq (fp.div roundNearestTiesToEven
                     ((_ to_fp 11 53) x_ack!346)
                     ((_ to_fp 11 53) b_ack!345))
             ((_ to_fp 11 53) #x412e848000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!344) ((_ to_fp 11 53) #x4024000000000000))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!346)
                    ((_ to_fp 11 53) b_ack!345))
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fe0000000000000)
                    ((_ to_fp 11 53) a_ack!344)))))
(assert (FPCHECK_FSUB_UNDERFLOW
  (fp.div roundNearestTiesToEven
          ((_ to_fp 11 53) x_ack!346)
          ((_ to_fp 11 53) b_ack!345))
  a_ack!344))

(check-sat)
(exit)
