(declare-fun x1_ack!1951 () (_ BitVec 64))
(declare-fun x0_ack!1958 () (_ BitVec 64))
(declare-fun x2_ack!1952 () (_ BitVec 64))
(declare-fun b_ack!1957 () (_ BitVec 64))
(declare-fun a_ack!1956 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!1953 () (_ BitVec 64))
(declare-fun y1_ack!1954 () (_ BitVec 64))
(declare-fun y2_ack!1955 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1958) ((_ to_fp 11 53) x1_ack!1951)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1951) ((_ to_fp 11 53) x2_ack!1952)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1951)
                       ((_ to_fp 11 53) x0_ack!1958))
               ((_ to_fp 11 53) x0_ack!1958))
       ((_ to_fp 11 53) x1_ack!1951)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1951)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1951)
                       ((_ to_fp 11 53) x0_ack!1958)))
       ((_ to_fp 11 53) x0_ack!1958)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1952)
                       ((_ to_fp 11 53) x1_ack!1951))
               ((_ to_fp 11 53) x1_ack!1951))
       ((_ to_fp 11 53) x2_ack!1952)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1952)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1952)
                       ((_ to_fp 11 53) x1_ack!1951)))
       ((_ to_fp 11 53) x1_ack!1951)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1951)
                    ((_ to_fp 11 53) x0_ack!1958))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1952)
                    ((_ to_fp 11 53) x1_ack!1951))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!1956) ((_ to_fp 11 53) b_ack!1957))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1956) ((_ to_fp 11 53) x0_ack!1958))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!1957) ((_ to_fp 11 53) x2_ack!1952))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!1956) ((_ to_fp 11 53) b_ack!1957))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1956) ((_ to_fp 11 53) x0_ack!1958))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!1956) ((_ to_fp 11 53) x1_ack!1951))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1957) ((_ to_fp 11 53) x0_ack!1958))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!1957) ((_ to_fp 11 53) x1_ack!1951)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!1951) ((_ to_fp 11 53) b_ack!1957))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1951)
                    ((_ to_fp 11 53) x0_ack!1958))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1952)
                    ((_ to_fp 11 53) x1_ack!1951))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!1955)
                           ((_ to_fp 11 53) y1_ack!1954))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!1952)
                                   ((_ to_fp 11 53) x1_ack!1951)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!1954)
                           ((_ to_fp 11 53) y0_ack!1953))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1951)
                                   ((_ to_fp 11 53) x0_ack!1958)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!1952)
                                   ((_ to_fp 11 53) x1_ack!1951))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1951)
                                   ((_ to_fp 11 53) x0_ack!1958))))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!2))
                           a!3))))
  (FPCHECK_FMUL_ACCURACY
    (fp.sub roundNearestTiesToEven
            ((_ to_fp 11 53) x2_ack!1952)
            ((_ to_fp 11 53) x1_ack!1951))
    (fp.add roundNearestTiesToEven ((_ to_fp 11 53) #x0000000000000000) a!4)))))

(check-sat)
(exit)
