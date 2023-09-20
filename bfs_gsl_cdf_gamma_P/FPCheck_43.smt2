(declare-fun b_ack!327 () (_ BitVec 64))
(declare-fun x_ack!328 () (_ BitVec 64))
(declare-fun a_ack!326 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (and (fp.eq ((_ to_fp 11 53) x_ack!328)
                 ((_ to_fp 11 53) #x0000000000000000))
          (fp.eq ((_ to_fp 11 53) b_ack!327)
                 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (not (fp.leq ((_ to_fp 11 53) x_ack!328) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt (fp.div roundNearestTiesToEven
               ((_ to_fp 11 53) x_ack!328)
               ((_ to_fp 11 53) b_ack!327))
       ((_ to_fp 11 53) a_ack!326)))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!326) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!328)
                    ((_ to_fp 11 53) b_ack!327))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!328)
                    ((_ to_fp 11 53) b_ack!327))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!326) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq (fp.div roundNearestTiesToEven
                     ((_ to_fp 11 53) x_ack!328)
                     ((_ to_fp 11 53) b_ack!327))
             (fp.mul roundNearestTiesToEven
                     ((_ to_fp 11 53) #x3fe0000000000000)
                     ((_ to_fp 11 53) a_ack!326)))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!326) ((_ to_fp 11 53) #x412e848000000000)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!328)
                           ((_ to_fp 11 53) b_ack!327))
                   ((_ to_fp 11 53) a_ack!326))))
  (not (fp.lt (fp.mul roundNearestTiesToEven a!1 a!1)
              ((_ to_fp 11 53) a_ack!326)))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!326) ((_ to_fp 11 53) #x3fc999999999999a))))
(assert (fp.leq ((_ to_fp 11 53) a_ack!326)
        (fp.div roundNearestTiesToEven
                ((_ to_fp 11 53) x_ack!328)
                ((_ to_fp 11 53) b_ack!327))))
(assert (not (fp.leq (fp.div roundNearestTiesToEven
                     ((_ to_fp 11 53) x_ack!328)
                     ((_ to_fp 11 53) b_ack!327))
             ((_ to_fp 11 53) #x412e848000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!326) ((_ to_fp 11 53) #x4024000000000000))))
(assert (FPCHECK_FMUL_UNDERFLOW #x3fe0000000000000 a_ack!326))

(check-sat)
(exit)
