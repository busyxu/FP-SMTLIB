(declare-fun b_ack!640 () (_ BitVec 64))
(declare-fun x_ack!641 () (_ BitVec 64))
(declare-fun a_ack!639 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (and (fp.eq ((_ to_fp 11 53) x_ack!641)
                 ((_ to_fp 11 53) #x0000000000000000))
          (fp.eq ((_ to_fp 11 53) b_ack!640)
                 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (not (fp.leq ((_ to_fp 11 53) x_ack!641) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!641)
                    ((_ to_fp 11 53) b_ack!640))
            ((_ to_fp 11 53) a_ack!639))))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!639) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!641)
                    ((_ to_fp 11 53) b_ack!640))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!641)
                    ((_ to_fp 11 53) b_ack!640))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt (fp.div roundNearestTiesToEven
               ((_ to_fp 11 53) x_ack!641)
               ((_ to_fp 11 53) b_ack!640))
       ((_ to_fp 11 53) #x4034000000000000)))
(assert (fp.lt ((_ to_fp 11 53) a_ack!639) ((_ to_fp 11 53) #x4024000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!639)
                       ((_ to_fp 11 53) #x3ff0000000000000))
               ((_ to_fp 11 53) a_ack!639))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!639)
                       ((_ to_fp 11 53) #x3ff0000000000000))
               ((_ to_fp 11 53) #x3ff0000000000000))
       ((_ to_fp 11 53) a_ack!639)))
(assert (let ((a!1 (fp.abs (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!639)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #x3f847ae147ae147b)))))
(assert (FPCHECK_FSUB_OVERFLOW
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!639)
          ((_ to_fp 11 53) #x3ff0000000000000))
  #x4000000000000000))

(check-sat)
(exit)
