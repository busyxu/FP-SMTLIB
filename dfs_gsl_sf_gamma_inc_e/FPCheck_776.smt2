(declare-fun b_ack!2833 () (_ BitVec 64))
(declare-fun a_ack!2834 () (_ BitVec 64))
(declare-fun CF_log ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!2833) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!2833) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!2834) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt ((_ to_fp 11 53) a_ack!2834) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2834) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!2833) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!2833) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!2834) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!2833)
             (fp.mul roundNearestTiesToEven
                     ((_ to_fp 11 53) #x3fe0000000000000)
                     ((_ to_fp 11 53) a_ack!2834)))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!2834) ((_ to_fp 11 53) #x412e848000000000))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!2834) ((_ to_fp 11 53) #x3fc999999999999a)))
(assert (fp.lt ((_ to_fp 11 53) b_ack!2833) ((_ to_fp 11 53) #x4014000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3fe2788cfc6fb619)
                       (CF_log b_ack!2833))
               ((_ to_fp 11 53) #x3fe2788cfc6fb619))
       (CF_log b_ack!2833)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3fe2788cfc6fb619)
                       (CF_log b_ack!2833))
               (CF_log b_ack!2833))
       ((_ to_fp 11 53) #x3fe2788cfc6fb619)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe2788cfc6fb619)
                                   (CF_log b_ack!2833))
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe2788cfc6fb619)
                                   (CF_log b_ack!2833)))
                   ((_ to_fp 11 53) #x4018000000000000))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3fea51a6625307d3)
                         a!1)
                 a!1)
         ((_ to_fp 11 53) #x3fea51a6625307d3))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe2788cfc6fb619)
                                   (CF_log b_ack!2833))
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe2788cfc6fb619)
                                   (CF_log b_ack!2833)))
                   ((_ to_fp 11 53) #x4018000000000000))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) #x3fea51a6625307d3)
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3fea51a6625307d3)
                         a!1))
         a!1)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) #xbffc21c3e15d140a)
                       (CF_log b_ack!2833))
               ((_ to_fp 11 53) #xbffc21c3e15d140a))
       (CF_log b_ack!2833)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) #xbffc21c3e15d140a)
                       (CF_log b_ack!2833))
               (CF_log b_ack!2833))
       ((_ to_fp 11 53) #xbffc21c3e15d140a)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfa5555555555555)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbffc21c3e15d140a)
                                   (CF_log b_ack!2833)))
                   ((_ to_fp 11 53) #xbfa5555555555555))))
  (fp.eq a!1
         (fp.add roundNearestTiesToEven
                 ((_ to_fp 11 53) #xbffc21c3e15d140a)
                 (CF_log b_ack!2833)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.add roundNearestTiesToEven
                                  ((_ to_fp 11 53) #xbffc21c3e15d140a)
                                  (CF_log b_ack!2833)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfa5555555555555)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbffc21c3e15d140a)
                                   (CF_log b_ack!2833)))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbffc21c3e15d140a)
                           (CF_log b_ack!2833)))))
  (fp.eq a!1 ((_ to_fp 11 53) #xbfa5555555555555))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfa5555555555555)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbffc21c3e15d140a)
                                   (CF_log b_ack!2833)))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfe876331663917c)
                           (CF_log b_ack!2833)))))
  (not (fp.eq (fp.abs a!1) ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfa5555555555555)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbffc21c3e15d140a)
                                   (CF_log b_ack!2833)))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfe876331663917c)
                           (CF_log b_ack!2833)))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!1
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe72ad94dc1fec8)
                                   (CF_log b_ack!2833)))
                   a!1)))
  (fp.eq a!2
         (fp.add roundNearestTiesToEven
                 ((_ to_fp 11 53) #x3fe72ad94dc1fec8)
                 (CF_log b_ack!2833))))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.add roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x3fe72ad94dc1fec8)
                                  (CF_log b_ack!2833)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfa5555555555555)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbffc21c3e15d140a)
                                   (CF_log b_ack!2833)))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfe876331663917c)
                           (CF_log b_ack!2833)))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!1
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe72ad94dc1fec8)
                                   (CF_log b_ack!2833)))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe72ad94dc1fec8)
                           (CF_log b_ack!2833)))))
  (fp.eq a!2 a!1))))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) #x40106e22afa35265)
                       (CF_log b_ack!2833))
               ((_ to_fp 11 53) #x40106e22afa35265))
       (CF_log b_ack!2833)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) #x40106e22afa35265)
                       (CF_log b_ack!2833))
               (CF_log b_ack!2833))
       ((_ to_fp 11 53) #x40106e22afa35265)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfa5555555555555)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbffc21c3e15d140a)
                                   (CF_log b_ack!2833)))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfe876331663917c)
                           (CF_log b_ack!2833)))))
  (FPCHECK_FMUL_ACCURACY
    (fp.mul roundNearestTiesToEven
            a!1
            (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fe72ad94dc1fec8)
                    (CF_log b_ack!2833)))
    (fp.add roundNearestTiesToEven
            ((_ to_fp 11 53) #x40106e22afa35265)
            (CF_log b_ack!2833)))))

(check-sat)
(exit)
