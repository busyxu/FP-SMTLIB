(declare-fun c_ack!1925 () (_ BitVec 64))
(declare-fun b_ack!1924 () (_ BitVec 64))
(declare-fun a_ack!1926 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.eq ((_ to_fp 11 53) c_ack!1925) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!1924) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!1926) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq ((_ to_fp 11 53) c_ack!1925) ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.leq (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) a_ack!1926))
                           ((_ to_fp 11 53) b_ack!1924))
                   ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.lt (fp.sub roundNearestTiesToEven
                          (fp.add roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x3ff0000000000000)
                                  ((_ to_fp 11 53) a_ack!1926))
                          ((_ to_fp 11 53) b_ack!1924))
                  ((_ to_fp 11 53) #x3fe0000000000000))))
  (not a!1)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) a_ack!1926))
               ((_ to_fp 11 53) b_ack!1924))
       ((_ to_fp 11 53) #x3fe0000000000000)))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!1924) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!1924) ((_ to_fp 11 53) #x3fe0000000000000)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!1924)
                       ((_ to_fp 11 53) #x3ff0000000000000))
               ((_ to_fp 11 53) #x3ff0000000000000))
       ((_ to_fp 11 53) b_ack!1924)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) b_ack!1924)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!1924)
                       ((_ to_fp 11 53) #x3ff0000000000000)))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (let ((a!1 (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!1924)
                                  ((_ to_fp 11 53) #x3ff0000000000000)))
                  ((_ to_fp 11 53) #x3f847ae147ae147b))))
  (not a!1)))
(assert (let ((a!1 (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!1924)
                                  ((_ to_fp 11 53) #x4000000000000000)))
                  ((_ to_fp 11 53) #x3f847ae147ae147b))))
  (not a!1)))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!1924) ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!1924) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!1924))
            ((_ to_fp 11 53) #x3f947ae147ae147b))))
(assert (fp.gt ((_ to_fp 11 53) b_ack!1924) ((_ to_fp 11 53) #xc3045f306dc9c883)))
(assert (FPCHECK_FSUB_UNDERFLOW #x3ff0000000000000 b_ack!1924))

(check-sat)
(exit)
