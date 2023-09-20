(declare-fun b_ack!633 () (_ BitVec 64))
(declare-fun x_ack!634 () (_ BitVec 64))
(declare-fun a_ack!632 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (and (fp.eq ((_ to_fp 11 53) x_ack!634)
                 ((_ to_fp 11 53) #x0000000000000000))
          (fp.eq ((_ to_fp 11 53) b_ack!633)
                 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (not (fp.leq ((_ to_fp 11 53) x_ack!634) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!634)
                    ((_ to_fp 11 53) b_ack!633))
            ((_ to_fp 11 53) a_ack!632))))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!632) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!634)
                    ((_ to_fp 11 53) b_ack!633))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!634)
                    ((_ to_fp 11 53) b_ack!633))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!634)
                    ((_ to_fp 11 53) b_ack!633))
            ((_ to_fp 11 53) #x4034000000000000))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!634)
                    ((_ to_fp 11 53) b_ack!633))
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fe0000000000000)
                    ((_ to_fp 11 53) a_ack!632)))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!632) ((_ to_fp 11 53) #x412e848000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!632)
             (fp.div roundNearestTiesToEven
                     ((_ to_fp 11 53) x_ack!634)
                     ((_ to_fp 11 53) b_ack!633)))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!634)
                           ((_ to_fp 11 53) b_ack!633))
                   ((_ to_fp 11 53) a_ack!632))))
  (not (fp.lt (fp.mul roundNearestTiesToEven a!1 a!1)
              ((_ to_fp 11 53) a_ack!632)))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!632) ((_ to_fp 11 53) #x4024000000000000))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!634)
                    ((_ to_fp 11 53) b_ack!633))
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fe0000000000000)
                    ((_ to_fp 11 53) a_ack!632)))))
(assert (FPCHECK_FSUB_OVERFLOW
  (fp.div roundNearestTiesToEven
          ((_ to_fp 11 53) x_ack!634)
          ((_ to_fp 11 53) b_ack!633))
  a_ack!632))

(check-sat)
(exit)
