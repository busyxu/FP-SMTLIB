(declare-fun x_ack!1894 () (_ BitVec 64))
(declare-fun a_ack!1893 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!1894) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!1894) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!1894) ((_ to_fp 11 53) #x3fa999999999999a))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!1894) ((_ to_fp 11 53) #x3fee666666666666))))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!1894) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!1894) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.leq (fp.abs (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!1894)
                                   ((_ to_fp 11 53) #x3fe0000000000000)))
                   ((_ to_fp 11 53) #x3fdb333333333333))))
  (not a!1)))
(assert (fp.lt ((_ to_fp 11 53) x_ack!1894) ((_ to_fp 11 53) #x3fe0000000000000)))
(assert (fp.lt ((_ to_fp 11 53) x_ack!1894) ((_ to_fp 11 53) #x3fe0000000000000)))
(assert (fp.leq (fp.add roundNearestTiesToEven
                ((_ to_fp 11 53) #x0000000000000000)
                ((_ to_fp 11 53) a_ack!1893))
        ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x_ack!1894)
                       ((_ to_fp 11 53) #x3ff0000000000000))
               ((_ to_fp 11 53) #x3ff0000000000000))
       ((_ to_fp 11 53) x_ack!1894)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x_ack!1894)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x_ack!1894)
                       ((_ to_fp 11 53) #x3ff0000000000000)))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.lt (fp.add roundNearestTiesToEven
               ((_ to_fp 11 53) #x0000000000000000)
               ((_ to_fp 11 53) a_ack!1893))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!1894)
                    ((_ to_fp 11 53) #x3ff0000000000000))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FSUB_OVERFLOW
  #x8000000000000000
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x_ack!1894)
          ((_ to_fp 11 53) #x3ff0000000000000))))

(check-sat)
(exit)
